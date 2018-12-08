
package Paws::IAM::DeleteAccessKey;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccessKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeleteAccessKey - Arguments for method DeleteAccessKey on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAccessKey on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DeleteAccessKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAccessKey.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To delete an access key for an IAM user
    # The following command deletes one access key (access key ID and secret
    # access key) assigned to the IAM user named Bob.
    $iam->DeleteAccessKey(
      {
        'AccessKeyId' => 'AKIDPMS9RO4H3FEXAMPLE',
        'UserName'    => 'Bob'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DeleteAccessKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessKeyId => Str

The access key ID for the access key ID and secret access key you want
to delete.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that can
consist of any upper or lowercased letter or digit.



=head2 UserName => Str

The name of the user whose access key pair you want to delete.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAccessKey in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

