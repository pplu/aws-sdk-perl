package Paws::IoTSecureTunneling::TunnelSummary;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TunnelArn => (is => 'ro', isa => 'Str', request_name => 'tunnelArn', traits => ['NameInRequest']);
  has TunnelId => (is => 'ro', isa => 'Str', request_name => 'tunnelId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::TunnelSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSecureTunneling::TunnelSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., TunnelId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSecureTunneling::TunnelSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Information about the tunnel.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The time the tunnel was created.


=head2 Description => Str

  A description of the tunnel.


=head2 LastUpdatedAt => Str

  The time the tunnel was last updated.


=head2 Status => Str

  The status of a tunnel. Valid values are: Open and Closed.


=head2 TunnelArn => Str

  The Amazon Resource Name of the tunnel. The tunnel ARN format is
C<arn:aws:tunnel:E<lt>regionE<gt>:E<lt>account-idE<gt>:tunnel/E<lt>tunnel-idE<gt>>


=head2 TunnelId => Str

  The unique alpha-numeric identifier for the tunnel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSecureTunneling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

