
package Paws::IoT::DescribeEventConfigurationsResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has EventConfigurations => (is => 'ro', isa => 'Paws::IoT::EventConfigurations', traits => ['NameInRequest'], request_name => 'eventConfigurations');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeEventConfigurationsResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The creation date of the event configuration.


=head2 EventConfigurations => L<Paws::IoT::EventConfigurations>

The event configurations.


=head2 LastModifiedDate => Str

The date the event configurations were last modified.


=head2 _request_id => Str


=cut

