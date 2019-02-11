package Paws::CloudWatchLogs::ResourcePolicy;
  use Moose;
  has LastUpdatedTime => (is => 'ro', isa => 'Int', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has PolicyDocument => (is => 'ro', isa => 'Str', request_name => 'policyDocument', traits => ['NameInRequest']);
  has PolicyName => (is => 'ro', isa => 'Str', request_name => 'policyName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ResourcePolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::ResourcePolicy object:

  $service_obj->Method(Att1 => { LastUpdatedTime => $value, ..., PolicyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::ResourcePolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUpdatedTime

=head1 DESCRIPTION

A policy enabling one or more entities to put logs to a log group in
this account.

=head1 ATTRIBUTES


=head2 LastUpdatedTime => Int

  Timestamp showing when this policy was last updated, expressed as the
number of milliseconds after Jan 1, 1970 00:00:00 UTC.


=head2 PolicyDocument => Str

  The details of the policy.


=head2 PolicyName => Str

  The name of the resource policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

