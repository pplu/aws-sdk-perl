package Paws::Shield::Subscription;
  use Moose;
  has StartTime => (is => 'ro', isa => 'Str');
  has TimeCommitmentInSeconds => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::Subscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::Subscription object:

  $service_obj->Method(Att1 => { StartTime => $value, ..., TimeCommitmentInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::Subscription object:

  $result = $service_obj->Method(...);
  $result->Att1->StartTime

=head1 DESCRIPTION

Information about the AWS Shield Advanced subscription for an account.

=head1 ATTRIBUTES


=head2 StartTime => Str

  The start time of the subscription, in Unix time in seconds. For more
information see timestamp
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types).


=head2 TimeCommitmentInSeconds => Int

  The length, in seconds, of the AWS Shield Advanced subscription for the
account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

