package Paws::Config::AggregationAuthorization;
  use Moose;
  has AggregationAuthorizationArn => (is => 'ro', isa => 'Str');
  has AuthorizedAccountId => (is => 'ro', isa => 'Str');
  has AuthorizedAwsRegion => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::AggregationAuthorization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::AggregationAuthorization object:

  $service_obj->Method(Att1 => { AggregationAuthorizationArn => $value, ..., CreationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::AggregationAuthorization object:

  $result = $service_obj->Method(...);
  $result->Att1->AggregationAuthorizationArn

=head1 DESCRIPTION

An object that represents the authorizations granted to aggregator
accounts and regions.

=head1 ATTRIBUTES


=head2 AggregationAuthorizationArn => Str

  The Amazon Resource Name (ARN) of the aggregation object.


=head2 AuthorizedAccountId => Str

  The 12-digit account ID of the account authorized to aggregate data.


=head2 AuthorizedAwsRegion => Str

  The region authorized to collect aggregated data.


=head2 CreationTime => Str

  The time stamp when the aggregation authorization was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

