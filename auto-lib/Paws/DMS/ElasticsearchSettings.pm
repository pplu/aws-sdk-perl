package Paws::DMS::ElasticsearchSettings;
  use Moose;
  has EndpointUri => (is => 'ro', isa => 'Str', required => 1);
  has ErrorRetryDuration => (is => 'ro', isa => 'Int');
  has FullLoadErrorPercentage => (is => 'ro', isa => 'Int');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ElasticsearchSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ElasticsearchSettings object:

  $service_obj->Method(Att1 => { EndpointUri => $value, ..., ServiceAccessRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ElasticsearchSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointUri

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointUri => Str

  The endpoint for the ElasticSearch cluster.


=head2 ErrorRetryDuration => Int

  The maximum number of seconds that DMS retries failed API requests to
the Elasticsearch cluster.


=head2 FullLoadErrorPercentage => Int

  The maximum percentage of records that can fail to be written before a
full load operation stops.


=head2 B<REQUIRED> ServiceAccessRoleArn => Str

  The Amazon Resource Name (ARN) used by service to access the IAM role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

