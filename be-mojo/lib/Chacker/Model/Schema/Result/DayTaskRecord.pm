use utf8;

package Chacker::Model::Schema::Result::DayTaskRecord;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->load_components(qw(InflateColumn::DateTime));
__PACKAGE__->table("day_task_records");
__PACKAGE__->add_columns(
  "task_id", {data_type => "integer", is_foreign_key => 1, is_nullable => 0},
  "day", {data_type => "date", is_nullable => 0},
);
__PACKAGE__->add_unique_constraint("day_task_records_task_id_day_key", ["task_id", "day"]);
__PACKAGE__->belongs_to(
  "task",
  "Chacker::Model::Schema::Result::Task",
  {id            => "task_id"},
  {is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION"},
);


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2020-10-10 12:23:21
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:oaXd6DvoLomPOXb8uUGatA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
