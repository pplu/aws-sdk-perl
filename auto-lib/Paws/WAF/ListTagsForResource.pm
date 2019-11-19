# Generated from json/callargs_class.tt

package Paws::WAF::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::WAF::Types qw//;
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NextMarker => (is => 'ro', isa => Str, predicate => 1);
  has ResourceARN => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WAF::ListTagsForResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceARN' => 1
                  },
  'types' => {
               'Limit' => {
                            'type' => 'Int'
                          },
               'ResourceARN' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $ListTagsForResourceResponse = $waf->ListTagsForResource(
      ResourceARN => 'MyResourceArn',
      Limit       => 1,                 # OPTIONAL
      NextMarker  => 'MyNextMarker',    # OPTIONAL
    );

    # Results:
    my $NextMarker         = $ListTagsForResourceResponse->NextMarker;
    my $TagInfoForResource = $ListTagsForResourceResponse->TagInfoForResource;

    # Returns a L<Paws::WAF::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/ListTagsForResource>

=head1 ATTRIBUTES


=head2 Limit => Int





=head2 NextMarker => Str





=head2 B<REQUIRED> ResourceARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

