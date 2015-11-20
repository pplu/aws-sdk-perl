package Paws::IAM::AccessKeyLastUsed;
  use Moose;
  has LastUsedDate => (is => 'ro', isa => 'Str', required => 1);
  has Region => (is => 'ro', isa => 'Str', required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::AccessKeyLastUsed

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::AccessKeyLastUsed object:

  $service_obj->Method(Att1 => { LastUsedDate => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::AccessKeyLastUsed object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUsedDate

=head1 DESCRIPTION

Contains information about the last time an AWS access key was used.

This data type is used as a response element in the
GetAccessKeyLastUsed action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LastUsedDate => Str

  The date and time, in ISO 8601 date-time format, when the access key
was most recently used. This field is null when:

=over

=item *

The user does not have an access key.

=item *

An access key exists but has never been used, at least not since IAM
started tracking this information on April 22nd, 2015.

=item *

There is no sign-in data associated with the user

=back



=head2 B<REQUIRED> Region => Str

  The AWS region where this access key was most recently used. This field
is null when:

=over

=item *

The user does not have an access key.

=item *

An access key exists but has never been used, at least not since IAM
started tracking this information on April 22nd, 2015.

=item *

There is no sign-in data associated with the user

=back

For more information about AWS regions, see Regions and Endpoints in
the Amazon Web Services General Reference.


=head2 B<REQUIRED> ServiceName => Str

  The name of the AWS service with which this access key was most
recently used. This field is null when:

=over

=item *

The user does not have an access key.

=item *

An access key exists but has never been used, at least not since IAM
started tracking this information on April 22nd, 2015.

=item *

There is no sign-in data associated with the user

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

