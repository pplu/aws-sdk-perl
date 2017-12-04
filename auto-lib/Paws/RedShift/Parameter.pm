package Paws::RedShift::Parameter;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ApplyType => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Bool');
  has MinimumEngineVersion => (is => 'ro', isa => 'Str');
  has ParameterName => (is => 'ro', isa => 'Str');
  has ParameterValue => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::Parameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::Parameter object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::Parameter object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 DESCRIPTION

Describes a parameter in a cluster parameter group.

=head1 ATTRIBUTES


=head2 AllowedValues => Str

  The valid range of values for the parameter.


=head2 ApplyType => Str

  Specifies how to apply the WLM configuration parameter. Some properties
can be applied dynamically, while other properties require that any
associated clusters be rebooted for the configuration changes to be
applied. For more information about parameters and parameter groups, go
to Amazon Redshift Parameter Groups
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the I<Amazon Redshift Cluster Management Guide>.


=head2 DataType => Str

  The data type of the parameter.


=head2 Description => Str

  A description of the parameter.


=head2 IsModifiable => Bool

  If C<true>, the parameter can be modified. Some parameters have
security or operational implications that prevent them from being
changed.


=head2 MinimumEngineVersion => Str

  The earliest engine version to which the parameter can apply.


=head2 ParameterName => Str

  The name of the parameter.


=head2 ParameterValue => Str

  The value of the parameter.


=head2 Source => Str

  The source of the parameter value, such as "engine-default" or "user".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

