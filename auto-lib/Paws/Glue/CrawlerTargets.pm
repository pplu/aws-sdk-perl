# Generated from default/object.tt
package Paws::Glue::CrawlerTargets;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Glue::Types qw/Glue_S3Target Glue_DynamoDBTarget Glue_CatalogTarget Glue_JdbcTarget/;
  has CatalogTargets => (is => 'ro', isa => ArrayRef[Glue_CatalogTarget]);
  has DynamoDBTargets => (is => 'ro', isa => ArrayRef[Glue_DynamoDBTarget]);
  has JdbcTargets => (is => 'ro', isa => ArrayRef[Glue_JdbcTarget]);
  has S3Targets => (is => 'ro', isa => ArrayRef[Glue_S3Target]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DynamoDBTargets' => {
                                      'class' => 'Paws::Glue::DynamoDBTarget',
                                      'type' => 'ArrayRef[Glue_DynamoDBTarget]'
                                    },
               'JdbcTargets' => {
                                  'class' => 'Paws::Glue::JdbcTarget',
                                  'type' => 'ArrayRef[Glue_JdbcTarget]'
                                },
               'S3Targets' => {
                                'class' => 'Paws::Glue::S3Target',
                                'type' => 'ArrayRef[Glue_S3Target]'
                              },
               'CatalogTargets' => {
                                     'class' => 'Paws::Glue::CatalogTarget',
                                     'type' => 'ArrayRef[Glue_CatalogTarget]'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CrawlerTargets

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::CrawlerTargets object:

  $service_obj->Method(Att1 => { CatalogTargets => $value, ..., S3Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CrawlerTargets object:

  $result = $service_obj->Method(...);
  $result->Att1->CatalogTargets

=head1 DESCRIPTION

Specifies data stores to crawl.

=head1 ATTRIBUTES


=head2 CatalogTargets => ArrayRef[Glue_CatalogTarget]

  Specifies AWS Glue Data Catalog targets.


=head2 DynamoDBTargets => ArrayRef[Glue_DynamoDBTarget]

  Specifies Amazon DynamoDB targets.


=head2 JdbcTargets => ArrayRef[Glue_JdbcTarget]

  Specifies JDBC targets.


=head2 S3Targets => ArrayRef[Glue_S3Target]

  Specifies Amazon Simple Storage Service (Amazon S3) targets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

