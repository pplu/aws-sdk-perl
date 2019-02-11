package Paws::IoT::AbortConfig;
  use Moose;
  has CriteriaList => (is => 'ro', isa => 'ArrayRef[Paws::IoT::AbortCriteria]', request_name => 'criteriaList', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AbortConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AbortConfig object:

  $service_obj->Method(Att1 => { CriteriaList => $value, ..., CriteriaList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AbortConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CriteriaList

=head1 DESCRIPTION

Details of abort criteria to abort the job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CriteriaList => ArrayRef[L<Paws::IoT::AbortCriteria>]

  The list of abort criteria to define rules to abort the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

