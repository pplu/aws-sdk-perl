
package Paws::OpsWorksCM::ListTagsForResource;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::ListTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS OpsWorks CM|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $ListTagsForResourceResponse = $opsworks -cm->ListTagsForResource(
      ResourceArn => 'MyAWSOpsWorksCMResourceArn',
      MaxResults  => 1,                              # OPTIONAL
      NextToken   => 'MyNextToken',                  # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceResponse->NextToken;
    my $Tags      = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::OpsWorksCM::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_ListTagsForResource.html>

=head1 ATTRIBUTES


=head2 MaxResults => Int

To receive a paginated response, use this parameter to specify the
maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

NextToken is a string that is returned in some command responses. It
indicates that not all entries have been returned, and that you must
run at least one more request to get remaining items. To get remaining
results, call C<ListTagsForResource> again, and assign the token from
the previous results as the value of the C<nextToken> parameter. If
there are no more results, the response object's C<nextToken> parameter
value is C<null>. Setting a C<nextToken> value that was not returned in
your previous results causes an C<InvalidNextTokenException> to occur.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Number (ARN) of an AWS OpsWorks for Chef Automate
or AWS OpsWorks for Puppet Enterprise server for which you want to show
applied tags. For example,
C<arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

