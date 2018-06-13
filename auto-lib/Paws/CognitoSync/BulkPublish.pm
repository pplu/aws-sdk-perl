
package Paws::CognitoSync::BulkPublish;
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityPoolId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BulkPublish');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identitypools/{IdentityPoolId}/bulkpublish');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::BulkPublishResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::BulkPublish - Arguments for method BulkPublish on L<Paws::CognitoSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BulkPublish on the
L<Amazon Cognito Sync|Paws::CognitoSync> service. Use the attributes of this class
as arguments to method BulkPublish.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BulkPublish.

=head1 SYNOPSIS

    my $cognito-sync = Paws->service('CognitoSync');
    my $BulkPublishResponse = $cognito -sync->BulkPublish(
      IdentityPoolId => 'MyIdentityPoolId',

    );

    # Results:
    my $IdentityPoolId = $BulkPublishResponse->IdentityPoolId;

    # Returns a L<Paws::CognitoSync::BulkPublishResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-sync/BulkPublish>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityPoolId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BulkPublish in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

