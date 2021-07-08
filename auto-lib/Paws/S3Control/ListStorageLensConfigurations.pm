
package Paws::S3Control::ListStorageLensConfigurations;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nextToken', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStorageLensConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/storagelens');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::ListStorageLensConfigurationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListStorageLensConfigurations - Arguments for method ListStorageLensConfigurations on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStorageLensConfigurations on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method ListStorageLensConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStorageLensConfigurations.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $ListStorageLensConfigurationsResult =
      $s3 -control->ListStorageLensConfigurations(
      AccountId => 'MyAccountId',
      NextToken => 'MyContinuationToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListStorageLensConfigurationsResult->NextToken;
    my $StorageLensConfigurationList =
      $ListStorageLensConfigurationsResult->StorageLensConfigurationList;

    # Returns a L<Paws::S3Control::ListStorageLensConfigurationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/ListStorageLensConfigurations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The account ID of the requester.



=head2 NextToken => Str

A pagination token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStorageLensConfigurations in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

