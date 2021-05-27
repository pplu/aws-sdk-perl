package TestFromArray;
  use Moose;
#  use YAML qw/LoadFile/;

#  has file => (is => 'ro', isa => 'Str', required => 1);

#  has tests => (is => 'ro', isa => 'ArrayRef', required => 1 );

  has todo_reason => (is => 'ro', isa => 'Str|Undef');
  has is_todo => (is => 'ro', isa => 'Bool', lazy => 1, default => sub { defined shift->todo_reason });

  has service => (is => 'ro', isa => 'Str|Undef' );
  has method  => (is => 'ro', isa => 'Str|Undef' );

#  has exception => (is => 'ro', isa => 'Str|Undef', lazy => 1, default => sub {
#    my $self = shift; 
#    exists $self->_contents->{ exception } and $self->_contents->{ exception } == 1 
#  });

  has tests => (is => 'ro', isa => 'ArrayRef', required => 1);
  has has_tests => (is => 'ro', isa => 'Bool', lazy => 1, default => sub { defined shift->tests });

1;
