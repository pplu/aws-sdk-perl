package Paws::Greengrass::BulkDeployment;
  use Moose;
  has BulkDeploymentArn => (is => 'ro', isa => 'Str');
  has BulkDeploymentId => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::BulkDeployment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::BulkDeployment object:

  $service_obj->Method(Att1 => { BulkDeploymentArn => $value, ..., CreatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::BulkDeployment object:

  $result = $service_obj->Method(...);
  $result->Att1->BulkDeploymentArn

=head1 DESCRIPTION

Information about a bulk deployment. You cannot start a new bulk
deployment while another one is still running or in a non-terminal
state.

=head1 ATTRIBUTES


=head2 BulkDeploymentArn => Str

  The ARN of the bulk deployment.


=head2 BulkDeploymentId => Str

  The ID of the bulk deployment.


=head2 CreatedAt => Str

  The time, in ISO format, when the deployment was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

