use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('Chacker');

my $challenge = {
  title       => 'test_challenge',
  description => 'test_description',
  tasks       => [
    {
      title       => 'Task#1',
      description => 'Description for task#1',
      type        => 'days',
    },
  ],
};

$t->post_ok('/api/challenge' => {Accept => '*/*'} => json => $challenge)->json_like('/id' => qr/^\d+$/);

&done_testing;
