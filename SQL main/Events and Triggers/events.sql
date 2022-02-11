-- Events are the automated task which happen in a particular time regularly
-- like once a day, once a week, once a month
-- events are used summarize data, report data and so on on regular basis

-- Showing status of event_scheduler
SHOW VARIABLES LIKE 'event%';

-- Setting event_sdheduler ON
SET GLOBAL event_scheduler = ON;

-- Creating our first event on payments_audit table
-- Start your event name with interval like: hourly, monthly, yearly
DELIMITER $$
CREATE EVENT yearly_delete_audit_rows
ON SCHEDULE
	-- For only once
	-- AT '2019-01-01'
    -- Repetition Frequencies/For Repetition
    -- EVERY 1 DAY
    -- EVERY 1 MONTH
    -- EVERY 1 HOUR
    -- STARTS and ENDS date are optional
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2029-01-01'
    
-- Task that will be done
DO BEGIN
    DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
END $$

DELIMITER ;

-- Viewing events
SHOW EVENTS;
SHOW EVENT like 'yearly%';

-- Dropping event
DROP EVENT IF EXISTS yearly_delete_audit_rows;

-- Disabling Events
ALTER EVENT yearly_delete_audit_rows DISABLE;

-- Enabling disabled Event
ALTER EVENT yearly_delete_audit_rows ENABLE;

-- To edit existing event alter keyword can be used without deleting and
-- we can also drop that event and create our new also without altering