
package Paws::LexModelsV2::TagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceARN', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceARN}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::TagResource - Arguments for method TagResource on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $TagResourceResponse = $models - v2 -lex->TagResource(
      ResourceARN => 'MyAmazonResourceName',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel to
tag.



=head2 B<REQUIRED> Tags => L<Paws::LexModelsV2::TagMap>

A list of tag keys to add to the resource. If a tag key already exists,
the existing value is replaced with the new value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

