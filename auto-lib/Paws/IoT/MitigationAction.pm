package Paws::IoT::MitigationAction;
  use Moose;
  has ActionParams => (is => 'ro', isa => 'Paws::IoT::MitigationActionParams', request_name => 'actionParams', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::MitigationAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::MitigationAction object:

  $service_obj->Method(Att1 => { ActionParams => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::MitigationAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionParams

=head1 DESCRIPTION

Describes which changes should be applied as part of a mitigation
action.

=head1 ATTRIBUTES


=head2 ActionParams => L<Paws::IoT::MitigationActionParams>

  The set of parameters for this mitigation action. The parameters vary,
depending on the kind of action you apply.


=head2 Id => Str

  A unique identifier for the mitigation action.


=head2 Name => Str

  A user-friendly name for the mitigation action.


=head2 RoleArn => Str

  The IAM role ARN used to apply this mitigation action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

