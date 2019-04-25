
package Paws::IAM::GetInstanceProfile;
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetInstanceProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetInstanceProfileResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetInstanceProfile - Arguments for method GetInstanceProfile on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstanceProfile on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetInstanceProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstanceProfile.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To get information about an instance profile
    # The following command gets information about the instance profile named
    # ExampleInstanceProfile.
    my $GetInstanceProfileResponse = $iam->GetInstanceProfile(
      {
        'InstanceProfileName' => 'ExampleInstanceProfile'
      }
    );

    # Results:
    my $InstanceProfile = $GetInstanceProfileResponse->InstanceProfile;

    # Returns a L<Paws::IAM::GetInstanceProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetInstanceProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceProfileName => Str

The name of the instance profile to get information about.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstanceProfile in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

