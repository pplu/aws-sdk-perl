package Paws::Robomaker::Fleet;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has LastDeploymentJob => (is => 'ro', isa => 'Str', request_name => 'lastDeploymentJob', traits => ['NameInRequest']);
  has LastDeploymentStatus => (is => 'ro', isa => 'Str', request_name => 'lastDeploymentStatus', traits => ['NameInRequest']);
  has LastDeploymentTime => (is => 'ro', isa => 'Str', request_name => 'lastDeploymentTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::Fleet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::Fleet object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::Fleet object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a fleet.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the fleet.


=head2 CreatedAt => Str

  The time, in milliseconds since the epoch, when the fleet was created.


=head2 LastDeploymentJob => Str

  The Amazon Resource Name (ARN) of the last deployment job.


=head2 LastDeploymentStatus => Str

  The status of the last fleet deployment.


=head2 LastDeploymentTime => Str

  The time of the last deployment.


=head2 Name => Str

  The name of the fleet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

