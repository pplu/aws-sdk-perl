package Paws::CloudWatchLogs::QueryCompileError;
  use Moose;
  has Location => (is => 'ro', isa => 'Paws::CloudWatchLogs::QueryCompileErrorLocation', request_name => 'location', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::QueryCompileError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::QueryCompileError object:

  $service_obj->Method(Att1 => { Location => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::QueryCompileError object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

Reserved.

=head1 ATTRIBUTES


=head2 Location => L<Paws::CloudWatchLogs::QueryCompileErrorLocation>

  Reserved.


=head2 Message => Str

  Reserved.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

