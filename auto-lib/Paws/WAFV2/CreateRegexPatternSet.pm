
package Paws::WAFV2::CreateRegexPatternSet;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RegularExpressionList => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::Regex]', required => 1);
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRegexPatternSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::CreateRegexPatternSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::CreateRegexPatternSet - Arguments for method CreateRegexPatternSet on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRegexPatternSet on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method CreateRegexPatternSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRegexPatternSet.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $CreateRegexPatternSetResponse = $wafv2->CreateRegexPatternSet(
      Name                  => 'MyEntityName',
      RegularExpressionList => [
        {
          RegexString => 'MyRegexPatternString',    # min: 1, max: 512; OPTIONAL
        },
        ...
      ],
      Scope       => 'CLOUDFRONT',
      Description => 'MyEntityDescription',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Summary = $CreateRegexPatternSetResponse->Summary;

    # Returns a L<Paws::WAFV2::CreateRegexPatternSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/CreateRegexPatternSet>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the set that helps with identification.



=head2 B<REQUIRED> Name => Str

The name of the set. You cannot change the name after you create the
set.



=head2 B<REQUIRED> RegularExpressionList => ArrayRef[L<Paws::WAFV2::Regex>]

Array of regular expression strings.



=head2 B<REQUIRED> Scope => Str

Specifies whether this is for an AWS CloudFront distribution or for a
regional application. A regional application can be an Application Load
Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the Region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">

=head2 Tags => ArrayRef[L<Paws::WAFV2::Tag>]

An array of key:value pairs to associate with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRegexPatternSet in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

