
package Paws::EC2::ModifyInstanceMetadataOptionsResult;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);
  has InstanceMetadataOptions => (is => 'ro', isa => 'Paws::EC2::InstanceMetadataOptionsResponse', request_name => 'instanceMetadataOptions', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceMetadataOptionsResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The ID of the instance.


=head2 InstanceMetadataOptions => L<Paws::EC2::InstanceMetadataOptionsResponse>

The metadata options for the instance.


=head2 _request_id => Str


=cut

