package Paws::IoT::AuthInfo;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Str', request_name => 'actionType', traits => ['NameInRequest']);
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'resources', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AuthInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuthInfo object:

  $service_obj->Method(Att1 => { ActionType => $value, ..., Resources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuthInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionType

=head1 DESCRIPTION

A collection of authorization information.

=head1 ATTRIBUTES


=head2 ActionType => Str

  The type of action for which the principal is being authorized.


=head2 Resources => ArrayRef[Str|Undef]

  The resources for which the principal is being authorized to perform
the specified action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

