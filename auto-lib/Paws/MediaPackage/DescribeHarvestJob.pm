
package Paws::MediaPackage::DescribeHarvestJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaPackage::Types qw//;
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeHarvestJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/harvest_jobs/{id}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaPackage::DescribeHarvestJobResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'IsRequired' => {
                    'Id' => 1
                  },
  'ParamInURI' => {
                    'Id' => 'id'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::DescribeHarvestJob - Arguments for method DescribeHarvestJob on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHarvestJob on the
L<AWS Elemental MediaPackage|Paws::MediaPackage> service. Use the attributes of this class
as arguments to method DescribeHarvestJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHarvestJob.

=head1 SYNOPSIS

    my $mediapackage = Paws->service('MediaPackage');
    my $DescribeHarvestJobResponse = $mediapackage->DescribeHarvestJob(
      Id => 'My__string',

    );

    # Results:
    my $Arn              = $DescribeHarvestJobResponse->Arn;
    my $ChannelId        = $DescribeHarvestJobResponse->ChannelId;
    my $CreatedAt        = $DescribeHarvestJobResponse->CreatedAt;
    my $EndTime          = $DescribeHarvestJobResponse->EndTime;
    my $Id               = $DescribeHarvestJobResponse->Id;
    my $OriginEndpointId = $DescribeHarvestJobResponse->OriginEndpointId;
    my $S3Destination    = $DescribeHarvestJobResponse->S3Destination;
    my $StartTime        = $DescribeHarvestJobResponse->StartTime;
    my $Status           = $DescribeHarvestJobResponse->Status;

    # Returns a L<Paws::MediaPackage::DescribeHarvestJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackage/DescribeHarvestJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the HarvestJob.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHarvestJob in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

