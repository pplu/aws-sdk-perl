package Paws::Pinpoint::ActivitiesResponse;
  use Moose;
  has Item => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::ActivityResponse]');
  has NextToken => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ActivitiesResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ActivitiesResponse object:

  $service_obj->Method(Att1 => { Item => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ActivitiesResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Item

=head1 DESCRIPTION

Activities for campaign.

=head1 ATTRIBUTES


=head2 Item => ArrayRef[L<Paws::Pinpoint::ActivityResponse>]

  List of campaign activities


=head2 NextToken => Str

  The string that you use in a subsequent request to get the next page of
results in a paginated response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

