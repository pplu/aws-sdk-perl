
package Paws::IAM::CreateAccessKey;
  use Moose;
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateAccessKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAccessKeyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateAccessKey - Arguments for method CreateAccessKey on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessKey on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method CreateAccessKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessKey.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To create an access key for an IAM user
    # The following command creates an access key (access key ID and secret
    # access key) for the IAM user named Bob.
    my $CreateAccessKeyResponse = $iam->CreateAccessKey(
      {
        'UserName' => 'Bob'
      }
    );

    # Results:
    my $AccessKey = $CreateAccessKeyResponse->AccessKey;

    # Returns a L<Paws::IAM::CreateAccessKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/CreateAccessKey>

=head1 ATTRIBUTES


=head2 UserName => Str

The name of the IAM user that the new key will belong to.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessKey in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

