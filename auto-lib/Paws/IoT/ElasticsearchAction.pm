# Generated from default/object.tt
package Paws::IoT::ElasticsearchAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has Endpoint => (is => 'ro', isa => Str, required => 1);
  has Id => (is => 'ro', isa => Str, required => 1);
  has Index => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'Id' => {
                         'type' => 'Str'
                       },
               'Index' => {
                            'type' => 'Str'
                          },
               'Endpoint' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'RoleArn' => 'roleArn',
                       'Id' => 'id',
                       'Index' => 'index',
                       'Endpoint' => 'endpoint'
                     },
  'IsRequired' => {
                    'Type' => 1,
                    'RoleArn' => 1,
                    'Id' => 1,
                    'Index' => 1,
                    'Endpoint' => 1
                  }
}
;
    return $Params_map;
  }


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

