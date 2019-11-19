# Generated from json/callargs_class.tt

package Paws::WAF::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_Tag/;
  has ResourceARN => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[WAF_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WAF::TagResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Tags' => 1,
                    'ResourceARN' => 1
                  },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::WAF::Tag',
                           'type' => 'ArrayRef[WAF_Tag]'
                         },
               'ResourceARN' => {
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

Paws::WAF::TagResource - Arguments for method TagResource on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $TagResourceResponse = $waf->TagResource(
      ResourceARN => 'MyResourceArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str





=head2 B<REQUIRED> Tags => ArrayRef[WAF_Tag]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

