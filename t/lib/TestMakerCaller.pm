package TestMakerCaller;
  use Moose;
  extends 'Paws::Net::MockCaller';
  use YAML qw/DumpFile/;
  use Hash::Flatten qw//;
  use v5.10;

  has '+result_hook' => (default => sub {
    return sub {
      my ($self, $result) = @_;

      my $test = { tests => [] };

      my $h = Paws->to_hash($result);
      $h = Hash::Flatten::flatten($h, { HashDelimiter => '.', ArrayDelimiter => '.' });
      $test->{ tests } = [ map { { expected => $h->{ $_ }, op => 'eq', path => $_ } } keys %$h ];

      my $file_name = $self->_test_file . '.test.yml';
      DumpFile($file_name, $test);
      say "Written test case to ${file_name}";
    }
  });

1;
