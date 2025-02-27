-- This file is automatically generated using maintenance/generateSchemaChangeSql.php.
-- Source: sql/abstractSchemaChanges/patch-templatelinks-target_id.json
-- Do not modify this file directly.
-- See https://www.mediawiki.org/wiki/Manual:Schema_changes
ALTER TABLE templatelinks
  ADD tl_target_id BIGINT DEFAULT NULL;

CREATE INDEX tl_target_id ON templatelinks (tl_target_id, tl_from);

CREATE INDEX tl_backlinks_namespace_target_id ON templatelinks (
  tl_from_namespace, tl_target_id,
  tl_from
);
