package TestFromYaml;
  use Moose;
  use YAML qw/LoadFile/;

  has file => (is => 'ro', isa => 'Str', required => 1);

  has _contents => (is => 'ro', isa => 'HashRef', lazy => 1, default => sub { LoadFile(shift->file) });

  has todo_reason => (is => 'ro', isa => 'Str|Undef', lazy => 1, default => sub { shift->_contents->{ todo } });
  has is_todo => (is => 'ro', isa => 'Bool', lazy => 1, default => sub { defined shift->todo_reason });

  has service => (is => 'ro', isa => 'Str|Undef', lazy => 1, default => sub { shift->_contents->{ service } });
  has method  => (is => 'ro', isa => 'Str|Undef', lazy => 1, default => sub { shift->_contents->{ call } });

  has tests => (is => 'ro', isa => 'ArrayRef|Undef', lazy => 1, default => sub {
    my $self = shift; 
    return [] if ($self->_contents->{ tests } eq '');
    return $self->_contents->{ tests };
  });
  has has_tests => (is => 'ro', isa => 'Bool', lazy => 1, default => sub { defined shift->tests });

1;
