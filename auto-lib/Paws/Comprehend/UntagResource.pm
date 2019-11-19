# Generated from json/callargs_class.tt

package Paws::Comprehend::UntagResource;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Comprehend::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Comprehend::UntagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TagKeys' => 1,
                    'ResourceArn' => 1
                  },
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'TagKeys' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::UntagResource - Arguments for method UntagResource on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $UntagResourceResponse = $comprehend->UntagResource(
      ResourceArn => 'MyComprehendArn',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the given Amazon Comprehend resource
from which you want to remove the tags.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The initial part of a key-value pair that forms a tag being removed
from a given resource. For example, a tag with "Sales" as the key might
be added to a resource to indicate its use by the sales department.
Keys must be unique and cannot be duplicated for a particular resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

