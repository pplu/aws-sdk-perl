package Paws::GroundStation::SecurityDetails;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIds', traits => ['NameInRequest'], required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIds', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::SecurityDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::SecurityDetails object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., SubnetIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::SecurityDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

Information about endpoints.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleArn => Str

  ARN to a role needed for connecting streams to your instances.


=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

  The security groups to attach to the elastic network interfaces.


=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

  A list of subnets where AWS Ground Station places elastic network
interfaces to send streams to your instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

