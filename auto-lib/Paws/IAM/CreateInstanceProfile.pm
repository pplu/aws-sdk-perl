
package Paws::IAM::CreateInstanceProfile;
  use Moose;
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateInstanceProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfileResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateInstanceProfile - Arguments for method CreateInstanceProfile on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstanceProfile on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method CreateInstanceProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstanceProfile.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To create an instance profile
    # The following command creates an instance profile named Webserver that is
    # ready to have a role attached and then be associated with an EC2 instance.
    my $CreateInstanceProfileResponse = $iam->CreateInstanceProfile(
      {
        'InstanceProfileName' => 'Webserver'
      }
    );

    # Results:
    my $InstanceProfile = $CreateInstanceProfileResponse->InstanceProfile;

    # Returns a L<Paws::IAM::CreateInstanceProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/CreateInstanceProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceProfileName => Str

The name of the instance profile to create.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 Path => Str

The path to the instance profile. For more information about paths, see
IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<IAM User Guide>.

This parameter is optional. If it is not included, it defaults to a
slash (/).

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
either a forward slash (/) by itself or a string that must begin and
end with forward slashes. In addition, it can contain any ASCII
character from the ! (\u0021) through the DEL character (\u007F),
including most punctuation characters, digits, and upper and lowercased
letters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstanceProfile in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

