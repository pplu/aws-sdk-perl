package Paws::AppSync::ElasticsearchDataSourceConfig;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str', request_name => 'awsRegion', traits => ['NameInRequest'], required => 1);
  has Endpoint => (is => 'ro', isa => 'Str', request_name => 'endpoint', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ElasticsearchDataSourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::ElasticsearchDataSourceConfig object:

  $service_obj->Method(Att1 => { AwsRegion => $value, ..., Endpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::ElasticsearchDataSourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsRegion

=head1 DESCRIPTION

Describes an Elasticsearch data source configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsRegion => Str

  The AWS Region.


=head2 B<REQUIRED> Endpoint => Str

  The endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

