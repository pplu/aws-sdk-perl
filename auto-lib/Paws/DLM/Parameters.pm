package Paws::DLM::Parameters;
  use Moose;
  has ExcludeBootVolume => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::Parameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::Parameters object:

  $service_obj->Method(Att1 => { ExcludeBootVolume => $value, ..., ExcludeBootVolume => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::Parameters object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludeBootVolume

=head1 DESCRIPTION

Optional parameters that can be added to the policy. The set of valid
parameters depends on the combination of C<policyType> and
C<resourceType> values.

=head1 ATTRIBUTES


=head2 ExcludeBootVolume => Bool

  When executing an EBS Snapshot Management E<ndash> Instance policy,
execute all CreateSnapshots calls with the C<excludeBootVolume> set to
the supplied field. Defaults to false. Only valid for EBS Snapshot
Management E<ndash> Instance policies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

