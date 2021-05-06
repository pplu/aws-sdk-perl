
package Paws::Discovery::CreateApplicationResponse;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

Configuration ID of an application to be created.


=head2 _request_id => Str


=cut

1;