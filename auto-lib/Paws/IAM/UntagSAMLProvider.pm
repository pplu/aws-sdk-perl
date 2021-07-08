
package Paws::IAM::UntagSAMLProvider;
  use Moose;
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagSAMLProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UntagSAMLProvider - Arguments for method UntagSAMLProvider on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagSAMLProvider on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UntagSAMLProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagSAMLProvider.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->UntagSAMLProvider(
      SAMLProviderArn => 'MyarnType',
      TagKeys         => [
        'MytagKeyType', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UntagSAMLProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SAMLProviderArn => Str

The ARN of the SAML identity provider in IAM from which you want to
remove tags.

This parameter accepts (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that consist
of upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: =,.@-



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of key names as a simple array of strings. The tags with
matching keys are removed from the specified SAML identity provider.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagSAMLProvider in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

