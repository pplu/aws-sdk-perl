# Generated from json/callargs_class.tt

package Paws::MediaStore::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaStore::Types qw//;
  has Resource => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaStore::ListTagsForResourceOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Resource' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'Resource' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::MediaStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS Elemental MediaStore|Paws::MediaStore> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $mediastore = Paws->service('MediaStore');
    my $ListTagsForResourceOutput = $mediastore->ListTagsForResource(
      Resource => 'MyContainerARN',

    );

    # Results:
    my $Tags = $ListTagsForResourceOutput->Tags;

    # Returns a L<Paws::MediaStore::ListTagsForResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediastore/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

The Amazon Resource Name (ARN) for the container.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

