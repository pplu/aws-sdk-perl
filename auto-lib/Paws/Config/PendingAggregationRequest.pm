package Paws::Config::PendingAggregationRequest;
  use Moose;
  has RequesterAccountId => (is => 'ro', isa => 'Str');
  has RequesterAwsRegion => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PendingAggregationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::PendingAggregationRequest object:

  $service_obj->Method(Att1 => { RequesterAccountId => $value, ..., RequesterAwsRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::PendingAggregationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->RequesterAccountId

=head1 DESCRIPTION

An object that represents the account ID and region of an aggregator
account that is requesting authorization but is not yet authorized.

=head1 ATTRIBUTES


=head2 RequesterAccountId => Str

  The 12-digit account ID of the account requesting to aggregate data.


=head2 RequesterAwsRegion => Str

  The region requesting to aggregate data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

