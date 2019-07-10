package Paws::PersonalizeEvents;
  use Moose;
  sub service { 'personalize-events' }
  sub signing_name { 'personalize' }
  sub version { '2018-03-22' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub PutEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::PersonalizeEvents::PutEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/PutEvents / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeEvents - Perl Interface to AWS Amazon Personalize Events

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('PersonalizeEvents');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22>


=head1 METHODS

=head2 PutEvents

=over

=item EventList => ArrayRef[L<Paws::PersonalizeEvents::Event>]

=item SessionId => Str

=item TrackingId => Str

=item [UserId => Str]


=back

Each argument is described in detail in: L<Paws::PersonalizeEvents::PutEvents>

Returns: nothing

Records user interaction event data.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

