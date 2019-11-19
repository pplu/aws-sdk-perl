
package Paws::Signer::TagResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw/Signer_TagMap/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => Signer_TagMap, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Signer::TagResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::Signer::TagMap',
                           'type' => 'Signer_TagMap'
                         },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ResourceArn' => 1,
                    'Tags' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'ParamInURI' => {
                    'ResourceArn' => 'resourceArn'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::TagResource - Arguments for method TagResource on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $TagResourceResponse = $signer->TagResource(
      ResourceArn => 'MyString',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

Amazon Resource Name (ARN) for the signing profile.



=head2 B<REQUIRED> Tags => Signer_TagMap

One or more tags to be associated with the signing profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

