
package Paws::Kendra::DescribeDataSource;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DescribeDataSourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeDataSource - Arguments for method DescribeDataSource on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataSource on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DescribeDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataSource.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DescribeDataSourceResponse = $kendra->DescribeDataSource(
      Id      => 'MyDataSourceId',
      IndexId => 'MyIndexId',

    );

    # Results:
    my $Configuration = $DescribeDataSourceResponse->Configuration;
    my $CreatedAt     = $DescribeDataSourceResponse->CreatedAt;
    my $Description   = $DescribeDataSourceResponse->Description;
    my $ErrorMessage  = $DescribeDataSourceResponse->ErrorMessage;
    my $Id            = $DescribeDataSourceResponse->Id;
    my $IndexId       = $DescribeDataSourceResponse->IndexId;
    my $Name          = $DescribeDataSourceResponse->Name;
    my $RoleArn       = $DescribeDataSourceResponse->RoleArn;
    my $Schedule      = $DescribeDataSourceResponse->Schedule;
    my $Status        = $DescribeDataSourceResponse->Status;
    my $Type          = $DescribeDataSourceResponse->Type;
    my $UpdatedAt     = $DescribeDataSourceResponse->UpdatedAt;

    # Returns a L<Paws::Kendra::DescribeDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DescribeDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier of the data source to describe.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index that contains the data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataSource in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

