package Paws::Inspector::Application;
  use Moose;
  has applicationArn => (is => 'ro', isa => 'Str');
  has applicationName => (is => 'ro', isa => 'Str');
  has resourceGroupArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Application

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Application object:

  $service_obj->Method(Att1 => { applicationArn => $value, ..., resourceGroupArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Application object:

  $result = $service_obj->Method(...);
  $result->Att1->applicationArn

=head1 DESCRIPTION

Contains information about an Inspector application.

This data type is used as the response element in the
DescribeApplication action.

=head1 ATTRIBUTES

=head2 applicationArn => Str

  The ARN specifying the Inspector application.

=head2 applicationName => Str

  The name of the Inspector application.

=head2 resourceGroupArn => Str

  The ARN specifying the resource group that is associated with the
application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

