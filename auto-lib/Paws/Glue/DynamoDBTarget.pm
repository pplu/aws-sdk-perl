# Generated by default/object.tt
package Paws::Glue::DynamoDBTarget;
  use Moose;
  has Path => (is => 'ro', isa => 'Str');
  has ScanAll => (is => 'ro', isa => 'Bool', request_name => 'scanAll', traits => ['NameInRequest']);
  has ScanRate => (is => 'ro', isa => 'Num', request_name => 'scanRate', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DynamoDBTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::DynamoDBTarget object:

  $service_obj->Method(Att1 => { Path => $value, ..., ScanRate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::DynamoDBTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->Path

=head1 DESCRIPTION

Specifies an Amazon DynamoDB table to crawl.

=head1 ATTRIBUTES


=head2 Path => Str

The name of the DynamoDB table to crawl.


=head2 ScanAll => Bool

Indicates whether to scan all the records, or to sample rows from the
table. Scanning all the records can take a long time when the table is
not a high throughput table.

A value of C<true> means to scan all records, while a value of C<false>
means to sample the records. If no value is specified, the value
defaults to C<true>.


=head2 ScanRate => Num

The percentage of the configured read capacity units to use by the Glue
crawler. Read capacity units is a term defined by DynamoDB, and is a
numeric value that acts as rate limiter for the number of reads that
can be performed on that table per second.

The valid values are null or a value between 0.1 to 1.5. A null value
is used when user does not provide a value, and defaults to 0.5 of the
configured Read Capacity Unit (for provisioned tables), or 0.25 of the
max configured Read Capacity Unit (for tables using on-demand mode).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

