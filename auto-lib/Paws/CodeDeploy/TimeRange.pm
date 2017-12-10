package Paws::CodeDeploy::TimeRange;
  use Moose;
  has End => (is => 'ro', isa => 'Str', request_name => 'end', traits => ['NameInRequest']);
  has Start => (is => 'ro', isa => 'Str', request_name => 'start', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::TimeRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::TimeRange object:

  $service_obj->Method(Att1 => { End => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::TimeRange object:

  $result = $service_obj->Method(...);
  $result->Att1->End

=head1 DESCRIPTION

Information about a time range.

=head1 ATTRIBUTES


=head2 End => Str

  The end time of the time range.

Specify null to leave the end time open-ended.


=head2 Start => Str

  The start time of the time range.

Specify null to leave the start time open-ended.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

