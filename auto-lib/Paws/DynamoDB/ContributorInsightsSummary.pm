package Paws::DynamoDB::ContributorInsightsSummary;
  use Moose;
  has ContributorInsightsStatus => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ContributorInsightsSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ContributorInsightsSummary object:

  $service_obj->Method(Att1 => { ContributorInsightsStatus => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ContributorInsightsSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ContributorInsightsStatus

=head1 DESCRIPTION

Represents a Contributor Insights summary entry..

=head1 ATTRIBUTES


=head2 ContributorInsightsStatus => Str

  Describes the current status for contributor insights for the given
table and index, if applicable.


=head2 IndexName => Str

  Name of the index associated with the summary, if any.


=head2 TableName => Str

  Name of the table associated with the summary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

