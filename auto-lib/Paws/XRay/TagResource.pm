
package Paws::XRay::TagResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::XRay::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/TagResource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::TagResource - Arguments for method TagResource on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $TagResourceResponse = $xray->TagResource(
      ResourceARN => 'MyAmazonResourceName',
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Number (ARN) of an X-Ray group or sampling rule.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::XRay::Tag>]

A map that contains one or more tag keys and tag values to attach to an
X-Ray group or sampling rule. For more information about ways to use
tags, see Tagging AWS resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<AWS General Reference>.

The following restrictions apply to tags:

=over

=item *

Maximum number of user-applied tags per resource: 50

=item *

Maximum tag key length: 128 Unicode characters

=item *

Maximum tag value length: 256 Unicode characters

=item *

Valid values for key and value: a-z, A-Z, 0-9, space, and the following
characters: _ . : / = + - and @

=item *

Tag keys and values are case sensitive.

=item *

Don't use C<aws:> as a prefix for keys; it's reserved for AWS use. You
cannot edit or delete system tags.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

