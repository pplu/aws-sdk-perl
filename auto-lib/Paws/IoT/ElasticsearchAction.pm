package Paws::IoT::ElasticsearchAction;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Str', request_name => 'endpoint', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Index => (is => 'ro', isa => 'Str', request_name => 'index', traits => ['NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ElasticsearchAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ElasticsearchAction object:

  $service_obj->Method(Att1 => { Endpoint => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ElasticsearchAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Endpoint

=head1 DESCRIPTION

Describes an action that writes data to an Amazon Elasticsearch Service
domain.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoint => Str

  The endpoint of your Elasticsearch domain.


=head2 B<REQUIRED> Id => Str

  The unique identifier for the document you are storing.


=head2 B<REQUIRED> Index => Str

  The Elasticsearch index where you want to store your data.


=head2 B<REQUIRED> RoleArn => Str

  The IAM role ARN that has access to Elasticsearch.


=head2 B<REQUIRED> Type => Str

  The type of document you are storing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

