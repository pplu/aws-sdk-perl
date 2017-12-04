package Paws::Greengrass::GroupVersion;
  use Moose;
  has CoreDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has DeviceDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has FunctionDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has LoggerDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has ResourceDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has SubscriptionDefinitionVersionArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GroupVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::GroupVersion object:

  $service_obj->Method(Att1 => { CoreDefinitionVersionArn => $value, ..., SubscriptionDefinitionVersionArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::GroupVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->CoreDefinitionVersionArn

=head1 DESCRIPTION

Information on group version

=head1 ATTRIBUTES


=head2 CoreDefinitionVersionArn => Str

  Core definition version arn for this group.


=head2 DeviceDefinitionVersionArn => Str

  Device definition version arn for this group.


=head2 FunctionDefinitionVersionArn => Str

  Function definition version arn for this group.


=head2 LoggerDefinitionVersionArn => Str

  Logger definition version arn for this group.


=head2 ResourceDefinitionVersionArn => Str

  Resource definition version arn for this group.


=head2 SubscriptionDefinitionVersionArn => Str

  Subscription definition version arn for this group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

