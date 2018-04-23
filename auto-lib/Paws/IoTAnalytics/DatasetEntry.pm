package Paws::IoTAnalytics::DatasetEntry;
  use Moose;
  has DataURI => (is => 'ro', isa => 'Str', request_name => 'dataURI', traits => ['NameInRequest']);
  has EntryName => (is => 'ro', isa => 'Str', request_name => 'entryName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatasetEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatasetEntry object:

  $service_obj->Method(Att1 => { DataURI => $value, ..., EntryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatasetEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->DataURI

=head1 DESCRIPTION

The reference to a data set entry.

=head1 ATTRIBUTES


=head2 DataURI => Str

  The pre-signed URI of the data set item.


=head2 EntryName => Str

  The name of the data set item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

