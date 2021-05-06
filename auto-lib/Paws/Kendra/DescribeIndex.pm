
package Paws::Kendra::DescribeIndex;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIndex');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DescribeIndexResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeIndex - Arguments for method DescribeIndex on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIndex on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DescribeIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIndex.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DescribeIndexResponse = $kendra->DescribeIndex(
      Id => 'MyIndexId',

    );

    # Results:
    my $CreatedAt   = $DescribeIndexResponse->CreatedAt;
    my $Description = $DescribeIndexResponse->Description;
    my $DocumentMetadataConfigurations =
      $DescribeIndexResponse->DocumentMetadataConfigurations;
    my $ErrorMessage    = $DescribeIndexResponse->ErrorMessage;
    my $Id              = $DescribeIndexResponse->Id;
    my $IndexStatistics = $DescribeIndexResponse->IndexStatistics;
    my $Name            = $DescribeIndexResponse->Name;
    my $RoleArn         = $DescribeIndexResponse->RoleArn;
    my $ServerSideEncryptionConfiguration =
      $DescribeIndexResponse->ServerSideEncryptionConfiguration;
    my $Status    = $DescribeIndexResponse->Status;
    my $UpdatedAt = $DescribeIndexResponse->UpdatedAt;

    # Returns a L<Paws::Kendra::DescribeIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DescribeIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The name of the index to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIndex in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

