
package Paws::IAM::UpdateAccessKey;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccessKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateAccessKey - Arguments for method UpdateAccessKey on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccessKey on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UpdateAccessKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccessKey.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To activate or deactivate an access key for an IAM user
    # The following command deactivates the specified access key (access key ID
    # and secret access key) for the IAM user named Bob.
    $iam->UpdateAccessKey(
      {
        'AccessKeyId' => 'AKIAIOSFODNN7EXAMPLE',
        'Status'      => 'Inactive',
        'UserName'    => 'Bob'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UpdateAccessKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessKeyId => Str

The access key ID of the secret access key you want to update.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that can
consist of any upper or lowercased letter or digit.



=head2 B<REQUIRED> Status => Str

The status you want to assign to the secret access key. C<Active> means
that the key can be used for API calls to AWS, while C<Inactive> means
that the key cannot be used.

Valid values are: C<"Active">, C<"Inactive">

=head2 UserName => Str

The name of the user whose key you want to update.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccessKey in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

