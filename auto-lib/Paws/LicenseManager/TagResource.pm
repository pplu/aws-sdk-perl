
package Paws::LicenseManager::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::TagResource - Arguments for method TagResource on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $TagResourceResponse = $license -manager->TagResource(
      ResourceArn => 'MyString',
      Tags        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

Resource of the ARN to be tagged.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::LicenseManager::Tag>]

Names of the tags to attach to the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

