package Paws::MarketplaceCommerceAnalytics;
  use Moose;
  sub service { 'marketplacecommerceanalytics' }
  sub version { '2015-07-01' }
  sub target_prefix { 'MarketplaceCommerceAnalytics20150701' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub GenerateDataSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCommerceAnalytics::GenerateDataSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSupportDataExport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceCommerceAnalytics::StartSupportDataExport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GenerateDataSet StartSupportDataExport / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCommerceAnalytics - Perl Interface to AWS AWS Marketplace Commerce Analytics

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MarketplaceCommerceAnalytics');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Provides AWS Marketplace business intelligence data on-demand.

=head1 METHODS

=head2 GenerateDataSet(DataSetPublicationDate => Str, DataSetType => Str, DestinationS3BucketName => Str, RoleNameArn => Str, SnsTopicArn => Str, [CustomerDefinedValues => L<Paws::MarketplaceCommerceAnalytics::CustomerDefinedValues>, DestinationS3Prefix => Str])

Each argument is described in detail in: L<Paws::MarketplaceCommerceAnalytics::GenerateDataSet>

Returns: a L<Paws::MarketplaceCommerceAnalytics::GenerateDataSetResult> instance

  Given a data set type and data set publication date, asynchronously
publishes the requested data set to the specified S3 bucket and
notifies the specified SNS topic once the data is available. Returns a
unique request identifier that can be used to correlate requests with
notifications from the SNS topic. Data sets will be published in
comma-separated values (CSV) format with the file name
{data_set_type}_YYYY-MM-DD.csv. If a file with the same name already
exists (e.g. if the same data set is requested twice), the original
file will be overwritten by the new file. Requires a Role with an
attached permissions policy providing Allow permissions for the
following actions: s3:PutObject, s3:GetBucketLocation,
sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.


=head2 StartSupportDataExport(DataSetType => Str, DestinationS3BucketName => Str, FromDate => Str, RoleNameArn => Str, SnsTopicArn => Str, [CustomerDefinedValues => L<Paws::MarketplaceCommerceAnalytics::CustomerDefinedValues>, DestinationS3Prefix => Str])

Each argument is described in detail in: L<Paws::MarketplaceCommerceAnalytics::StartSupportDataExport>

Returns: a L<Paws::MarketplaceCommerceAnalytics::StartSupportDataExportResult> instance

  Given a data set type and a from date, asynchronously publishes the
requested customer support data to the specified S3 bucket and notifies
the specified SNS topic once the data is available. Returns a unique
request identifier that can be used to correlate requests with
notifications from the SNS topic. Data sets will be published in
comma-separated values (CSV) format with the file name
{data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same
name already exists (e.g. if the same data set is requested twice), the
original file will be overwritten by the new file. Requires a Role with
an attached permissions policy providing Allow permissions for the
following actions: s3:PutObject, s3:GetBucketLocation,
sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

