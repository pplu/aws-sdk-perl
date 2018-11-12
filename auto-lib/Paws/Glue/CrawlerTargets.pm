package Paws::Glue::CrawlerTargets;
  use Moose;
  has DynamoDBTargets => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DynamoDBTarget]');
  has JdbcTargets => (is => 'ro', isa => 'ArrayRef[Paws::Glue::JdbcTarget]');
  has S3Targets => (is => 'ro', isa => 'ArrayRef[Paws::Glue::S3Target]');
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

  $service_obj->Method(Att1 => { DynamoDBTargets => $value, ..., S3Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CrawlerTargets object:

  $result = $service_obj->Method(...);
  $result->Att1->DynamoDBTargets

=head1 DESCRIPTION

Specifies data stores to crawl.

=head1 ATTRIBUTES


=head2 DynamoDBTargets => ArrayRef[L<Paws::Glue::DynamoDBTarget>]

  Specifies DynamoDB targets.


=head2 JdbcTargets => ArrayRef[L<Paws::Glue::JdbcTarget>]

  Specifies JDBC targets.


=head2 S3Targets => ArrayRef[L<Paws::Glue::S3Target>]

  Specifies Amazon S3 targets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

